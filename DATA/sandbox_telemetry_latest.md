# sandbox_telemetry_parse — 2026-10-16 09:20:40 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=312568 lines=1168
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 766 |
| `memory_sample` | 393 |
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
| `chromeBrowserPssKb` | {'int': 393} |
| `chromeGpuPssKb` | {'int': 393} |
| `chromeOtherPssKb` | {'int': 393} |
| `chromeProcesses` | {'int': 393} |
| `chromeProfiles` | {'int': 393} |
| `chromeRendererMaxPssKb` | {'int': 393} |
| `chromeRendererPssKb` | {'int': 393} |
| `chromeRenderers` | {'int': 393} |
| `chromeTabs` | {'int': 393} |
| `chromeTabsProbedProfiles` | {'int': 393} |
| `chromeUtilityPssKb` | {'int': 393} |
| `desktopPssKb` | {'int': 393} |
| `hostPssKb` | {'int': 393} |
| `kind` | {'str': 393} |
| `memAvailableKb` | {'int': 393} |
| `memTotalKb` | {'int': 393} |
| `otherPssKb` | {'int': 393} |
| `processes` | {'int': 393} |
| `pssFallbackProcesses` | {'int': 393} |

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
| `cpuMillicores` | {'int': 763} |
| `display` | {'int': 766} |
| `kind` | {'str': 766} |
| `processes` | {'int': 766} |
| `pssKb` | {'int': 766} |
| `rendererMaxPssKb` | {'int': 766} |
| `renderers` | {'int': 766} |
| `tabs` | {'int': 765} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
