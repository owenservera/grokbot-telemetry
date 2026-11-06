# sandbox_telemetry_parse — 2026-11-06 20:35:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=159060 lines=359
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 350 |
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
| `chromeBrowserPssKb` | {'int': 350} |
| `chromeGpuPssKb` | {'int': 350} |
| `chromeOtherPssKb` | {'int': 350} |
| `chromeProcesses` | {'int': 350} |
| `chromeProfiles` | {'int': 350} |
| `chromeRendererMaxPssKb` | {'int': 350} |
| `chromeRendererPssKb` | {'int': 350} |
| `chromeRenderers` | {'int': 350} |
| `chromeTabs` | {'int': 350} |
| `chromeTabsProbedProfiles` | {'int': 350} |
| `chromeUtilityPssKb` | {'int': 350} |
| `desktopPssKb` | {'int': 350} |
| `hostPssKb` | {'int': 350} |
| `kind` | {'str': 350} |
| `memAvailableKb` | {'int': 350} |
| `memTotalKb` | {'int': 350} |
| `otherPssKb` | {'int': 350} |
| `processes` | {'int': 350} |
| `pssFallbackProcesses` | {'int': 350} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
