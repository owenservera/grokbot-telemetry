# sandbox_telemetry_parse — 2026-10-16 12:59:18 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=465029 lines=1738
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1146 |
| `memory_sample` | 583 |
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
| `chromeBrowserPssKb` | {'int': 583} |
| `chromeGpuPssKb` | {'int': 583} |
| `chromeOtherPssKb` | {'int': 583} |
| `chromeProcesses` | {'int': 583} |
| `chromeProfiles` | {'int': 583} |
| `chromeRendererMaxPssKb` | {'int': 583} |
| `chromeRendererPssKb` | {'int': 583} |
| `chromeRenderers` | {'int': 583} |
| `chromeTabs` | {'int': 583} |
| `chromeTabsProbedProfiles` | {'int': 583} |
| `chromeUtilityPssKb` | {'int': 583} |
| `desktopPssKb` | {'int': 583} |
| `hostPssKb` | {'int': 583} |
| `kind` | {'str': 583} |
| `memAvailableKb` | {'int': 583} |
| `memTotalKb` | {'int': 583} |
| `otherPssKb` | {'int': 583} |
| `processes` | {'int': 583} |
| `pssFallbackProcesses` | {'int': 583} |

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
| `cpuMillicores` | {'int': 1143} |
| `display` | {'int': 1146} |
| `kind` | {'str': 1146} |
| `processes` | {'int': 1146} |
| `pssKb` | {'int': 1146} |
| `rendererMaxPssKb` | {'int': 1146} |
| `renderers` | {'int': 1146} |
| `tabs` | {'int': 1145} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
