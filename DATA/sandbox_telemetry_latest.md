# sandbox_telemetry_parse — 2026-11-11 18:33:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1762532 lines=3903
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3894 |
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
| `chromeBrowserPssKb` | {'int': 3894} |
| `chromeGpuPssKb` | {'int': 3894} |
| `chromeOtherPssKb` | {'int': 3894} |
| `chromeProcesses` | {'int': 3894} |
| `chromeProfiles` | {'int': 3894} |
| `chromeRendererMaxPssKb` | {'int': 3894} |
| `chromeRendererPssKb` | {'int': 3894} |
| `chromeRenderers` | {'int': 3894} |
| `chromeTabs` | {'int': 3894} |
| `chromeTabsProbedProfiles` | {'int': 3894} |
| `chromeUtilityPssKb` | {'int': 3894} |
| `desktopPssKb` | {'int': 3894} |
| `hostPssKb` | {'int': 3894} |
| `kind` | {'str': 3894} |
| `memAvailableKb` | {'int': 3894} |
| `memTotalKb` | {'int': 3894} |
| `otherPssKb` | {'int': 3894} |
| `processes` | {'int': 3894} |
| `pssFallbackProcesses` | {'int': 3894} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
