# sandbox_telemetry_parse — 2026-10-16 10:22:13 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=355127 lines=1327
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 872 |
| `memory_sample` | 446 |
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
| `chromeBrowserPssKb` | {'int': 446} |
| `chromeGpuPssKb` | {'int': 446} |
| `chromeOtherPssKb` | {'int': 446} |
| `chromeProcesses` | {'int': 446} |
| `chromeProfiles` | {'int': 446} |
| `chromeRendererMaxPssKb` | {'int': 446} |
| `chromeRendererPssKb` | {'int': 446} |
| `chromeRenderers` | {'int': 446} |
| `chromeTabs` | {'int': 446} |
| `chromeTabsProbedProfiles` | {'int': 446} |
| `chromeUtilityPssKb` | {'int': 446} |
| `desktopPssKb` | {'int': 446} |
| `hostPssKb` | {'int': 446} |
| `kind` | {'str': 446} |
| `memAvailableKb` | {'int': 446} |
| `memTotalKb` | {'int': 446} |
| `otherPssKb` | {'int': 446} |
| `processes` | {'int': 446} |
| `pssFallbackProcesses` | {'int': 446} |

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
| `cpuMillicores` | {'int': 869} |
| `display` | {'int': 872} |
| `kind` | {'str': 872} |
| `processes` | {'int': 872} |
| `pssKb` | {'int': 872} |
| `rendererMaxPssKb` | {'int': 872} |
| `renderers` | {'int': 872} |
| `tabs` | {'int': 871} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
