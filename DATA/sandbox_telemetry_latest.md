# sandbox_telemetry_parse — 2026-11-18 02:47:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=643533 lines=1429
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1422 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1422} |
| `chromeGpuPssKb` | {'int': 1422} |
| `chromeOtherPssKb` | {'int': 1422} |
| `chromeProcesses` | {'int': 1422} |
| `chromeProfiles` | {'int': 1422} |
| `chromeRendererMaxPssKb` | {'int': 1422} |
| `chromeRendererPssKb` | {'int': 1422} |
| `chromeRenderers` | {'int': 1422} |
| `chromeTabs` | {'int': 1422} |
| `chromeTabsProbedProfiles` | {'int': 1422} |
| `chromeUtilityPssKb` | {'int': 1422} |
| `desktopPssKb` | {'int': 1422} |
| `hostPssKb` | {'int': 1422} |
| `kind` | {'str': 1422} |
| `memAvailableKb` | {'int': 1422} |
| `memTotalKb` | {'int': 1422} |
| `otherPssKb` | {'int': 1422} |
| `processes` | {'int': 1422} |
| `pssFallbackProcesses` | {'int': 1422} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
