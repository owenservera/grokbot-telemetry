# sandbox_telemetry_parse — 2026-10-13 22:13:03 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1253321 lines=3295
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2413 |
| `chrome_profile_sample` | 874 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2413} |
| `chromeGpuPssKb` | {'int': 2413} |
| `chromeOtherPssKb` | {'int': 2413} |
| `chromeProcesses` | {'int': 2413} |
| `chromeProfiles` | {'int': 2413} |
| `chromeRendererMaxPssKb` | {'int': 2413} |
| `chromeRendererPssKb` | {'int': 2413} |
| `chromeRenderers` | {'int': 2413} |
| `chromeTabs` | {'int': 2413} |
| `chromeTabsProbedProfiles` | {'int': 2413} |
| `chromeUtilityPssKb` | {'int': 2413} |
| `desktopPssKb` | {'int': 2413} |
| `hostPssKb` | {'int': 2413} |
| `kind` | {'str': 2413} |
| `memAvailableKb` | {'int': 2413} |
| `memTotalKb` | {'int': 2413} |
| `otherPssKb` | {'int': 2413} |
| `processes` | {'int': 2413} |
| `pssFallbackProcesses` | {'int': 2413} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 873} |
| `display` | {'int': 874} |
| `kind` | {'str': 874} |
| `processes` | {'int': 874} |
| `pssKb` | {'int': 874} |
| `rendererMaxPssKb` | {'int': 874} |
| `renderers` | {'int': 874} |
| `tabs` | {'int': 874} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
