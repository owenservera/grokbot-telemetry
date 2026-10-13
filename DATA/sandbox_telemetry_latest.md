# sandbox_telemetry_parse — 2026-10-13 13:54:51 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1123036 lines=2887
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2209 |
| `chrome_profile_sample` | 670 |
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
| `chromeBrowserPssKb` | {'int': 2209} |
| `chromeGpuPssKb` | {'int': 2209} |
| `chromeOtherPssKb` | {'int': 2209} |
| `chromeProcesses` | {'int': 2209} |
| `chromeProfiles` | {'int': 2209} |
| `chromeRendererMaxPssKb` | {'int': 2209} |
| `chromeRendererPssKb` | {'int': 2209} |
| `chromeRenderers` | {'int': 2209} |
| `chromeTabs` | {'int': 2209} |
| `chromeTabsProbedProfiles` | {'int': 2209} |
| `chromeUtilityPssKb` | {'int': 2209} |
| `desktopPssKb` | {'int': 2209} |
| `hostPssKb` | {'int': 2209} |
| `kind` | {'str': 2209} |
| `memAvailableKb` | {'int': 2209} |
| `memTotalKb` | {'int': 2209} |
| `otherPssKb` | {'int': 2209} |
| `processes` | {'int': 2209} |
| `pssFallbackProcesses` | {'int': 2209} |

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
| `cpuMillicores` | {'int': 669} |
| `display` | {'int': 670} |
| `kind` | {'str': 670} |
| `processes` | {'int': 670} |
| `pssKb` | {'int': 670} |
| `rendererMaxPssKb` | {'int': 670} |
| `renderers` | {'int': 670} |
| `tabs` | {'int': 670} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
