# sandbox_telemetry_parse — 2026-10-16 03:54:16 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=63151 lines=235
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 144 |
| `memory_sample` | 82 |
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
| `chromeBrowserPssKb` | {'int': 82} |
| `chromeGpuPssKb` | {'int': 82} |
| `chromeOtherPssKb` | {'int': 82} |
| `chromeProcesses` | {'int': 82} |
| `chromeProfiles` | {'int': 82} |
| `chromeRendererMaxPssKb` | {'int': 82} |
| `chromeRendererPssKb` | {'int': 82} |
| `chromeRenderers` | {'int': 82} |
| `chromeTabs` | {'int': 82} |
| `chromeTabsProbedProfiles` | {'int': 82} |
| `chromeUtilityPssKb` | {'int': 82} |
| `desktopPssKb` | {'int': 82} |
| `hostPssKb` | {'int': 82} |
| `kind` | {'str': 82} |
| `memAvailableKb` | {'int': 82} |
| `memTotalKb` | {'int': 82} |
| `otherPssKb` | {'int': 82} |
| `processes` | {'int': 82} |
| `pssFallbackProcesses` | {'int': 82} |

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
| `cpuMillicores` | {'int': 141} |
| `display` | {'int': 144} |
| `kind` | {'str': 144} |
| `processes` | {'int': 144} |
| `pssKb` | {'int': 144} |
| `rendererMaxPssKb` | {'int': 144} |
| `renderers` | {'int': 144} |
| `tabs` | {'int': 143} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
