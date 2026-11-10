# sandbox_telemetry_parse — 2026-11-10 20:42:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1311464 lines=2906
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2897 |
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
| `chromeBrowserPssKb` | {'int': 2897} |
| `chromeGpuPssKb` | {'int': 2897} |
| `chromeOtherPssKb` | {'int': 2897} |
| `chromeProcesses` | {'int': 2897} |
| `chromeProfiles` | {'int': 2897} |
| `chromeRendererMaxPssKb` | {'int': 2897} |
| `chromeRendererPssKb` | {'int': 2897} |
| `chromeRenderers` | {'int': 2897} |
| `chromeTabs` | {'int': 2897} |
| `chromeTabsProbedProfiles` | {'int': 2897} |
| `chromeUtilityPssKb` | {'int': 2897} |
| `desktopPssKb` | {'int': 2897} |
| `hostPssKb` | {'int': 2897} |
| `kind` | {'str': 2897} |
| `memAvailableKb` | {'int': 2897} |
| `memTotalKb` | {'int': 2897} |
| `otherPssKb` | {'int': 2897} |
| `processes` | {'int': 2897} |
| `pssFallbackProcesses` | {'int': 2897} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
