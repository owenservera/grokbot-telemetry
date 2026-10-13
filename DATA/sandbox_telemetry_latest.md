# sandbox_telemetry_parse — 2026-10-13 11:46:45 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1054087 lines=2671
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2101 |
| `chrome_profile_sample` | 562 |
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
| `chromeBrowserPssKb` | {'int': 2101} |
| `chromeGpuPssKb` | {'int': 2101} |
| `chromeOtherPssKb` | {'int': 2101} |
| `chromeProcesses` | {'int': 2101} |
| `chromeProfiles` | {'int': 2101} |
| `chromeRendererMaxPssKb` | {'int': 2101} |
| `chromeRendererPssKb` | {'int': 2101} |
| `chromeRenderers` | {'int': 2101} |
| `chromeTabs` | {'int': 2101} |
| `chromeTabsProbedProfiles` | {'int': 2101} |
| `chromeUtilityPssKb` | {'int': 2101} |
| `desktopPssKb` | {'int': 2101} |
| `hostPssKb` | {'int': 2101} |
| `kind` | {'str': 2101} |
| `memAvailableKb` | {'int': 2101} |
| `memTotalKb` | {'int': 2101} |
| `otherPssKb` | {'int': 2101} |
| `processes` | {'int': 2101} |
| `pssFallbackProcesses` | {'int': 2101} |

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
| `cpuMillicores` | {'int': 561} |
| `display` | {'int': 562} |
| `kind` | {'str': 562} |
| `processes` | {'int': 562} |
| `pssKb` | {'int': 562} |
| `rendererMaxPssKb` | {'int': 562} |
| `renderers` | {'int': 562} |
| `tabs` | {'int': 562} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
