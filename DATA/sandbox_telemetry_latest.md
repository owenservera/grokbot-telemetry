# sandbox_telemetry_parse — 2026-10-16 08:33:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=284461 lines=1063
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 696 |
| `memory_sample` | 358 |
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
| `chromeBrowserPssKb` | {'int': 358} |
| `chromeGpuPssKb` | {'int': 358} |
| `chromeOtherPssKb` | {'int': 358} |
| `chromeProcesses` | {'int': 358} |
| `chromeProfiles` | {'int': 358} |
| `chromeRendererMaxPssKb` | {'int': 358} |
| `chromeRendererPssKb` | {'int': 358} |
| `chromeRenderers` | {'int': 358} |
| `chromeTabs` | {'int': 358} |
| `chromeTabsProbedProfiles` | {'int': 358} |
| `chromeUtilityPssKb` | {'int': 358} |
| `desktopPssKb` | {'int': 358} |
| `hostPssKb` | {'int': 358} |
| `kind` | {'str': 358} |
| `memAvailableKb` | {'int': 358} |
| `memTotalKb` | {'int': 358} |
| `otherPssKb` | {'int': 358} |
| `processes` | {'int': 358} |
| `pssFallbackProcesses` | {'int': 358} |

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
| `cpuMillicores` | {'int': 693} |
| `display` | {'int': 696} |
| `kind` | {'str': 696} |
| `processes` | {'int': 696} |
| `pssKb` | {'int': 696} |
| `rendererMaxPssKb` | {'int': 696} |
| `renderers` | {'int': 696} |
| `tabs` | {'int': 695} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
