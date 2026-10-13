# sandbox_telemetry_parse — 2026-10-13 05:19:22 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=848498 lines=2025
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1778 |
| `chrome_profile_sample` | 239 |
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
| `chromeBrowserPssKb` | {'int': 1778} |
| `chromeGpuPssKb` | {'int': 1778} |
| `chromeOtherPssKb` | {'int': 1778} |
| `chromeProcesses` | {'int': 1778} |
| `chromeProfiles` | {'int': 1778} |
| `chromeRendererMaxPssKb` | {'int': 1778} |
| `chromeRendererPssKb` | {'int': 1778} |
| `chromeRenderers` | {'int': 1778} |
| `chromeTabs` | {'int': 1778} |
| `chromeTabsProbedProfiles` | {'int': 1778} |
| `chromeUtilityPssKb` | {'int': 1778} |
| `desktopPssKb` | {'int': 1778} |
| `hostPssKb` | {'int': 1778} |
| `kind` | {'str': 1778} |
| `memAvailableKb` | {'int': 1778} |
| `memTotalKb` | {'int': 1778} |
| `otherPssKb` | {'int': 1778} |
| `processes` | {'int': 1778} |
| `pssFallbackProcesses` | {'int': 1778} |

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
| `cpuMillicores` | {'int': 238} |
| `display` | {'int': 239} |
| `kind` | {'str': 239} |
| `processes` | {'int': 239} |
| `pssKb` | {'int': 239} |
| `rendererMaxPssKb` | {'int': 239} |
| `renderers` | {'int': 239} |
| `tabs` | {'int': 239} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
