# sandbox_telemetry_parse — 2026-11-25 22:07:13 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2944191 lines=6522
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6507 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6507} |
| `chromeGpuPssKb` | {'int': 6507} |
| `chromeOtherPssKb` | {'int': 6507} |
| `chromeProcesses` | {'int': 6507} |
| `chromeProfiles` | {'int': 6507} |
| `chromeRendererMaxPssKb` | {'int': 6507} |
| `chromeRendererPssKb` | {'int': 6507} |
| `chromeRenderers` | {'int': 6507} |
| `chromeTabs` | {'int': 6507} |
| `chromeTabsProbedProfiles` | {'int': 6507} |
| `chromeUtilityPssKb` | {'int': 6507} |
| `desktopPssKb` | {'int': 6507} |
| `hostPssKb` | {'int': 6507} |
| `kind` | {'str': 6507} |
| `memAvailableKb` | {'int': 6507} |
| `memTotalKb` | {'int': 6507} |
| `otherPssKb` | {'int': 6507} |
| `processes` | {'int': 6507} |
| `pssFallbackProcesses` | {'int': 6507} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
