# sandbox_telemetry_parse — 2026-11-20 16:01:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1789037 lines=3965
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3954 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3954} |
| `chromeGpuPssKb` | {'int': 3954} |
| `chromeOtherPssKb` | {'int': 3954} |
| `chromeProcesses` | {'int': 3954} |
| `chromeProfiles` | {'int': 3954} |
| `chromeRendererMaxPssKb` | {'int': 3954} |
| `chromeRendererPssKb` | {'int': 3954} |
| `chromeRenderers` | {'int': 3954} |
| `chromeTabs` | {'int': 3954} |
| `chromeTabsProbedProfiles` | {'int': 3954} |
| `chromeUtilityPssKb` | {'int': 3954} |
| `desktopPssKb` | {'int': 3954} |
| `hostPssKb` | {'int': 3954} |
| `kind` | {'str': 3954} |
| `memAvailableKb` | {'int': 3954} |
| `memTotalKb` | {'int': 3954} |
| `otherPssKb` | {'int': 3954} |
| `processes` | {'int': 3954} |
| `pssFallbackProcesses` | {'int': 3954} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
