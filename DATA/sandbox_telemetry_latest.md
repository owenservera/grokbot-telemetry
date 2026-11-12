# sandbox_telemetry_parse — 2026-11-12 06:14:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2001500 lines=4431
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4422 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 4422} |
| `chromeGpuPssKb` | {'int': 4422} |
| `chromeOtherPssKb` | {'int': 4422} |
| `chromeProcesses` | {'int': 4422} |
| `chromeProfiles` | {'int': 4422} |
| `chromeRendererMaxPssKb` | {'int': 4422} |
| `chromeRendererPssKb` | {'int': 4422} |
| `chromeRenderers` | {'int': 4422} |
| `chromeTabs` | {'int': 4422} |
| `chromeTabsProbedProfiles` | {'int': 4422} |
| `chromeUtilityPssKb` | {'int': 4422} |
| `desktopPssKb` | {'int': 4422} |
| `hostPssKb` | {'int': 4422} |
| `kind` | {'str': 4422} |
| `memAvailableKb` | {'int': 4422} |
| `memTotalKb` | {'int': 4422} |
| `otherPssKb` | {'int': 4422} |
| `processes` | {'int': 4422} |
| `pssFallbackProcesses` | {'int': 4422} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
