# sandbox_telemetry_parse — 2026-10-16 07:32:42 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=236299 lines=883
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 576 |
| `memory_sample` | 298 |
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
| `chromeBrowserPssKb` | {'int': 298} |
| `chromeGpuPssKb` | {'int': 298} |
| `chromeOtherPssKb` | {'int': 298} |
| `chromeProcesses` | {'int': 298} |
| `chromeProfiles` | {'int': 298} |
| `chromeRendererMaxPssKb` | {'int': 298} |
| `chromeRendererPssKb` | {'int': 298} |
| `chromeRenderers` | {'int': 298} |
| `chromeTabs` | {'int': 298} |
| `chromeTabsProbedProfiles` | {'int': 298} |
| `chromeUtilityPssKb` | {'int': 298} |
| `desktopPssKb` | {'int': 298} |
| `hostPssKb` | {'int': 298} |
| `kind` | {'str': 298} |
| `memAvailableKb` | {'int': 298} |
| `memTotalKb` | {'int': 298} |
| `otherPssKb` | {'int': 298} |
| `processes` | {'int': 298} |
| `pssFallbackProcesses` | {'int': 298} |

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
| `cpuMillicores` | {'int': 573} |
| `display` | {'int': 576} |
| `kind` | {'str': 576} |
| `processes` | {'int': 576} |
| `pssKb` | {'int': 576} |
| `rendererMaxPssKb` | {'int': 576} |
| `renderers` | {'int': 576} |
| `tabs` | {'int': 575} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
