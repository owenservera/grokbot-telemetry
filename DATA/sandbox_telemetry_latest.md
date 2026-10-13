# sandbox_telemetry_parse — 2026-10-13 16:35:45 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1158802 lines=2999
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2265 |
| `chrome_profile_sample` | 726 |
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
| `chromeBrowserPssKb` | {'int': 2265} |
| `chromeGpuPssKb` | {'int': 2265} |
| `chromeOtherPssKb` | {'int': 2265} |
| `chromeProcesses` | {'int': 2265} |
| `chromeProfiles` | {'int': 2265} |
| `chromeRendererMaxPssKb` | {'int': 2265} |
| `chromeRendererPssKb` | {'int': 2265} |
| `chromeRenderers` | {'int': 2265} |
| `chromeTabs` | {'int': 2265} |
| `chromeTabsProbedProfiles` | {'int': 2265} |
| `chromeUtilityPssKb` | {'int': 2265} |
| `desktopPssKb` | {'int': 2265} |
| `hostPssKb` | {'int': 2265} |
| `kind` | {'str': 2265} |
| `memAvailableKb` | {'int': 2265} |
| `memTotalKb` | {'int': 2265} |
| `otherPssKb` | {'int': 2265} |
| `processes` | {'int': 2265} |
| `pssFallbackProcesses` | {'int': 2265} |

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
| `cpuMillicores` | {'int': 725} |
| `display` | {'int': 726} |
| `kind` | {'str': 726} |
| `processes` | {'int': 726} |
| `pssKb` | {'int': 726} |
| `rendererMaxPssKb` | {'int': 726} |
| `renderers` | {'int': 726} |
| `tabs` | {'int': 726} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
