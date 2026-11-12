# sandbox_telemetry_parse — 2026-11-12 13:07:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2139946 lines=4737
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4728 |
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
| `chromeBrowserPssKb` | {'int': 4728} |
| `chromeGpuPssKb` | {'int': 4728} |
| `chromeOtherPssKb` | {'int': 4728} |
| `chromeProcesses` | {'int': 4728} |
| `chromeProfiles` | {'int': 4728} |
| `chromeRendererMaxPssKb` | {'int': 4728} |
| `chromeRendererPssKb` | {'int': 4728} |
| `chromeRenderers` | {'int': 4728} |
| `chromeTabs` | {'int': 4728} |
| `chromeTabsProbedProfiles` | {'int': 4728} |
| `chromeUtilityPssKb` | {'int': 4728} |
| `desktopPssKb` | {'int': 4728} |
| `hostPssKb` | {'int': 4728} |
| `kind` | {'str': 4728} |
| `memAvailableKb` | {'int': 4728} |
| `memTotalKb` | {'int': 4728} |
| `otherPssKb` | {'int': 4728} |
| `processes` | {'int': 4728} |
| `pssFallbackProcesses` | {'int': 4728} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
