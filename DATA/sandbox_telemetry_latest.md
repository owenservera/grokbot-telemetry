# sandbox_telemetry_parse — 2026-10-16 04:56:05 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=112784 lines=421
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 268 |
| `memory_sample` | 144 |
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
| `chromeBrowserPssKb` | {'int': 144} |
| `chromeGpuPssKb` | {'int': 144} |
| `chromeOtherPssKb` | {'int': 144} |
| `chromeProcesses` | {'int': 144} |
| `chromeProfiles` | {'int': 144} |
| `chromeRendererMaxPssKb` | {'int': 144} |
| `chromeRendererPssKb` | {'int': 144} |
| `chromeRenderers` | {'int': 144} |
| `chromeTabs` | {'int': 144} |
| `chromeTabsProbedProfiles` | {'int': 144} |
| `chromeUtilityPssKb` | {'int': 144} |
| `desktopPssKb` | {'int': 144} |
| `hostPssKb` | {'int': 144} |
| `kind` | {'str': 144} |
| `memAvailableKb` | {'int': 144} |
| `memTotalKb` | {'int': 144} |
| `otherPssKb` | {'int': 144} |
| `processes` | {'int': 144} |
| `pssFallbackProcesses` | {'int': 144} |

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
| `cpuMillicores` | {'int': 265} |
| `display` | {'int': 268} |
| `kind` | {'str': 268} |
| `processes` | {'int': 268} |
| `pssKb` | {'int': 268} |
| `rendererMaxPssKb` | {'int': 268} |
| `renderers` | {'int': 268} |
| `tabs` | {'int': 267} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
