# sandbox_telemetry_parse — 2026-10-13 07:39:21 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=921043 lines=2253
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1892 |
| `chrome_profile_sample` | 353 |
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
| `chromeBrowserPssKb` | {'int': 1892} |
| `chromeGpuPssKb` | {'int': 1892} |
| `chromeOtherPssKb` | {'int': 1892} |
| `chromeProcesses` | {'int': 1892} |
| `chromeProfiles` | {'int': 1892} |
| `chromeRendererMaxPssKb` | {'int': 1892} |
| `chromeRendererPssKb` | {'int': 1892} |
| `chromeRenderers` | {'int': 1892} |
| `chromeTabs` | {'int': 1892} |
| `chromeTabsProbedProfiles` | {'int': 1892} |
| `chromeUtilityPssKb` | {'int': 1892} |
| `desktopPssKb` | {'int': 1892} |
| `hostPssKb` | {'int': 1892} |
| `kind` | {'str': 1892} |
| `memAvailableKb` | {'int': 1892} |
| `memTotalKb` | {'int': 1892} |
| `otherPssKb` | {'int': 1892} |
| `processes` | {'int': 1892} |
| `pssFallbackProcesses` | {'int': 1892} |

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
| `cpuMillicores` | {'int': 352} |
| `display` | {'int': 353} |
| `kind` | {'str': 353} |
| `processes` | {'int': 353} |
| `pssKb` | {'int': 353} |
| `rendererMaxPssKb` | {'int': 353} |
| `renderers` | {'int': 353} |
| `tabs` | {'int': 353} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
