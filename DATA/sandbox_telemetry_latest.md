# sandbox_telemetry_parse — 2026-10-16 05:06:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=120794 lines=451
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 288 |
| `memory_sample` | 154 |
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
| `chromeBrowserPssKb` | {'int': 154} |
| `chromeGpuPssKb` | {'int': 154} |
| `chromeOtherPssKb` | {'int': 154} |
| `chromeProcesses` | {'int': 154} |
| `chromeProfiles` | {'int': 154} |
| `chromeRendererMaxPssKb` | {'int': 154} |
| `chromeRendererPssKb` | {'int': 154} |
| `chromeRenderers` | {'int': 154} |
| `chromeTabs` | {'int': 154} |
| `chromeTabsProbedProfiles` | {'int': 154} |
| `chromeUtilityPssKb` | {'int': 154} |
| `desktopPssKb` | {'int': 154} |
| `hostPssKb` | {'int': 154} |
| `kind` | {'str': 154} |
| `memAvailableKb` | {'int': 154} |
| `memTotalKb` | {'int': 154} |
| `otherPssKb` | {'int': 154} |
| `processes` | {'int': 154} |
| `pssFallbackProcesses` | {'int': 154} |

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
| `cpuMillicores` | {'int': 285} |
| `display` | {'int': 288} |
| `kind` | {'str': 288} |
| `processes` | {'int': 288} |
| `pssKb` | {'int': 288} |
| `rendererMaxPssKb` | {'int': 288} |
| `renderers` | {'int': 288} |
| `tabs` | {'int': 287} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
