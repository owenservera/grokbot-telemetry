# sandbox_telemetry_parse — 2026-10-13 19:09:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1197757 lines=3121
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2326 |
| `chrome_profile_sample` | 787 |
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
| `chromeBrowserPssKb` | {'int': 2326} |
| `chromeGpuPssKb` | {'int': 2326} |
| `chromeOtherPssKb` | {'int': 2326} |
| `chromeProcesses` | {'int': 2326} |
| `chromeProfiles` | {'int': 2326} |
| `chromeRendererMaxPssKb` | {'int': 2326} |
| `chromeRendererPssKb` | {'int': 2326} |
| `chromeRenderers` | {'int': 2326} |
| `chromeTabs` | {'int': 2326} |
| `chromeTabsProbedProfiles` | {'int': 2326} |
| `chromeUtilityPssKb` | {'int': 2326} |
| `desktopPssKb` | {'int': 2326} |
| `hostPssKb` | {'int': 2326} |
| `kind` | {'str': 2326} |
| `memAvailableKb` | {'int': 2326} |
| `memTotalKb` | {'int': 2326} |
| `otherPssKb` | {'int': 2326} |
| `processes` | {'int': 2326} |
| `pssFallbackProcesses` | {'int': 2326} |

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
| `cpuMillicores` | {'int': 786} |
| `display` | {'int': 787} |
| `kind` | {'str': 787} |
| `processes` | {'int': 787} |
| `pssKb` | {'int': 787} |
| `rendererMaxPssKb` | {'int': 787} |
| `renderers` | {'int': 787} |
| `tabs` | {'int': 787} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
