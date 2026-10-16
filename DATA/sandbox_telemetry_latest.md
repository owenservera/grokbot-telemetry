# sandbox_telemetry_parse — 2026-10-16 16:13:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=614304 lines=2296
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1518 |
| `memory_sample` | 769 |
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
| `chromeBrowserPssKb` | {'int': 769} |
| `chromeGpuPssKb` | {'int': 769} |
| `chromeOtherPssKb` | {'int': 769} |
| `chromeProcesses` | {'int': 769} |
| `chromeProfiles` | {'int': 769} |
| `chromeRendererMaxPssKb` | {'int': 769} |
| `chromeRendererPssKb` | {'int': 769} |
| `chromeRenderers` | {'int': 769} |
| `chromeTabs` | {'int': 769} |
| `chromeTabsProbedProfiles` | {'int': 769} |
| `chromeUtilityPssKb` | {'int': 769} |
| `desktopPssKb` | {'int': 769} |
| `hostPssKb` | {'int': 769} |
| `kind` | {'str': 769} |
| `memAvailableKb` | {'int': 769} |
| `memTotalKb` | {'int': 769} |
| `otherPssKb` | {'int': 769} |
| `processes` | {'int': 769} |
| `pssFallbackProcesses` | {'int': 769} |

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
| `cpuMillicores` | {'int': 1515} |
| `display` | {'int': 1518} |
| `kind` | {'str': 1518} |
| `processes` | {'int': 1518} |
| `pssKb` | {'int': 1518} |
| `rendererMaxPssKb` | {'int': 1518} |
| `renderers` | {'int': 1518} |
| `tabs` | {'int': 1517} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
