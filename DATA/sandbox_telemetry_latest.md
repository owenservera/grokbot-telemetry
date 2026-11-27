# sandbox_telemetry_parse — 2026-11-27 08:12:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=321314 lines=717
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 709 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 709} |
| `chromeGpuPssKb` | {'int': 709} |
| `chromeOtherPssKb` | {'int': 709} |
| `chromeProcesses` | {'int': 709} |
| `chromeProfiles` | {'int': 709} |
| `chromeRendererMaxPssKb` | {'int': 709} |
| `chromeRendererPssKb` | {'int': 709} |
| `chromeRenderers` | {'int': 709} |
| `chromeTabs` | {'int': 709} |
| `chromeTabsProbedProfiles` | {'int': 709} |
| `chromeUtilityPssKb` | {'int': 709} |
| `desktopPssKb` | {'int': 709} |
| `hostPssKb` | {'int': 709} |
| `kind` | {'str': 709} |
| `memAvailableKb` | {'int': 709} |
| `memTotalKb` | {'int': 709} |
| `otherPssKb` | {'int': 709} |
| `processes` | {'int': 709} |
| `pssFallbackProcesses` | {'int': 709} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
