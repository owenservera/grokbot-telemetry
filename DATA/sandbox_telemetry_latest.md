# sandbox_telemetry_parse — 2026-10-16 23:33:10 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=923448 lines=3451
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2288 |
| `memory_sample` | 1154 |
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
| `chromeBrowserPssKb` | {'int': 1154} |
| `chromeGpuPssKb` | {'int': 1154} |
| `chromeOtherPssKb` | {'int': 1154} |
| `chromeProcesses` | {'int': 1154} |
| `chromeProfiles` | {'int': 1154} |
| `chromeRendererMaxPssKb` | {'int': 1154} |
| `chromeRendererPssKb` | {'int': 1154} |
| `chromeRenderers` | {'int': 1154} |
| `chromeTabs` | {'int': 1154} |
| `chromeTabsProbedProfiles` | {'int': 1154} |
| `chromeUtilityPssKb` | {'int': 1154} |
| `desktopPssKb` | {'int': 1154} |
| `hostPssKb` | {'int': 1154} |
| `kind` | {'str': 1154} |
| `memAvailableKb` | {'int': 1154} |
| `memTotalKb` | {'int': 1154} |
| `otherPssKb` | {'int': 1154} |
| `processes` | {'int': 1154} |
| `pssFallbackProcesses` | {'int': 1154} |

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
| `cpuMillicores` | {'int': 2285} |
| `display` | {'int': 2288} |
| `kind` | {'str': 2288} |
| `processes` | {'int': 2288} |
| `pssKb` | {'int': 2288} |
| `rendererMaxPssKb` | {'int': 2288} |
| `renderers` | {'int': 2288} |
| `tabs` | {'int': 2287} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
