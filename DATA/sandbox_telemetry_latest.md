# sandbox_telemetry_parse — 2026-10-16 18:00:33 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=696988 lines=2605
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1724 |
| `memory_sample` | 872 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 872} |
| `chromeGpuPssKb` | {'int': 872} |
| `chromeOtherPssKb` | {'int': 872} |
| `chromeProcesses` | {'int': 872} |
| `chromeProfiles` | {'int': 872} |
| `chromeRendererMaxPssKb` | {'int': 872} |
| `chromeRendererPssKb` | {'int': 872} |
| `chromeRenderers` | {'int': 872} |
| `chromeTabs` | {'int': 872} |
| `chromeTabsProbedProfiles` | {'int': 872} |
| `chromeUtilityPssKb` | {'int': 872} |
| `desktopPssKb` | {'int': 872} |
| `hostPssKb` | {'int': 872} |
| `kind` | {'str': 872} |
| `memAvailableKb` | {'int': 872} |
| `memTotalKb` | {'int': 872} |
| `otherPssKb` | {'int': 872} |
| `processes` | {'int': 872} |
| `pssFallbackProcesses` | {'int': 872} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 1721} |
| `display` | {'int': 1724} |
| `kind` | {'str': 1724} |
| `processes` | {'int': 1724} |
| `pssKb` | {'int': 1724} |
| `rendererMaxPssKb` | {'int': 1724} |
| `renderers` | {'int': 1724} |
| `tabs` | {'int': 1723} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
