# sandbox_telemetry_parse — 2026-10-16 06:59:27 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=210630 lines=787
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 512 |
| `memory_sample` | 266 |
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
| `chromeBrowserPssKb` | {'int': 266} |
| `chromeGpuPssKb` | {'int': 266} |
| `chromeOtherPssKb` | {'int': 266} |
| `chromeProcesses` | {'int': 266} |
| `chromeProfiles` | {'int': 266} |
| `chromeRendererMaxPssKb` | {'int': 266} |
| `chromeRendererPssKb` | {'int': 266} |
| `chromeRenderers` | {'int': 266} |
| `chromeTabs` | {'int': 266} |
| `chromeTabsProbedProfiles` | {'int': 266} |
| `chromeUtilityPssKb` | {'int': 266} |
| `desktopPssKb` | {'int': 266} |
| `hostPssKb` | {'int': 266} |
| `kind` | {'str': 266} |
| `memAvailableKb` | {'int': 266} |
| `memTotalKb` | {'int': 266} |
| `otherPssKb` | {'int': 266} |
| `processes` | {'int': 266} |
| `pssFallbackProcesses` | {'int': 266} |

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
| `cpuMillicores` | {'int': 509} |
| `display` | {'int': 512} |
| `kind` | {'str': 512} |
| `processes` | {'int': 512} |
| `pssKb` | {'int': 512} |
| `rendererMaxPssKb` | {'int': 512} |
| `renderers` | {'int': 512} |
| `tabs` | {'int': 511} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
