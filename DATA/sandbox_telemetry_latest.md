# sandbox_telemetry_parse — 2026-10-16 03:31:48 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=45531 lines=169
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 100 |
| `memory_sample` | 60 |
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
| `chromeBrowserPssKb` | {'int': 60} |
| `chromeGpuPssKb` | {'int': 60} |
| `chromeOtherPssKb` | {'int': 60} |
| `chromeProcesses` | {'int': 60} |
| `chromeProfiles` | {'int': 60} |
| `chromeRendererMaxPssKb` | {'int': 60} |
| `chromeRendererPssKb` | {'int': 60} |
| `chromeRenderers` | {'int': 60} |
| `chromeTabs` | {'int': 60} |
| `chromeTabsProbedProfiles` | {'int': 60} |
| `chromeUtilityPssKb` | {'int': 60} |
| `desktopPssKb` | {'int': 60} |
| `hostPssKb` | {'int': 60} |
| `kind` | {'str': 60} |
| `memAvailableKb` | {'int': 60} |
| `memTotalKb` | {'int': 60} |
| `otherPssKb` | {'int': 60} |
| `processes` | {'int': 60} |
| `pssFallbackProcesses` | {'int': 60} |

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
| `cpuMillicores` | {'int': 97} |
| `display` | {'int': 100} |
| `kind` | {'str': 100} |
| `processes` | {'int': 100} |
| `pssKb` | {'int': 100} |
| `rendererMaxPssKb` | {'int': 100} |
| `renderers` | {'int': 100} |
| `tabs` | {'int': 99} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
