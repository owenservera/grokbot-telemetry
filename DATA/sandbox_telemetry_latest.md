# sandbox_telemetry_parse — 2026-11-10 05:19:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1000958 lines=2220
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2211 |
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
| `chromeBrowserPssKb` | {'int': 2211} |
| `chromeGpuPssKb` | {'int': 2211} |
| `chromeOtherPssKb` | {'int': 2211} |
| `chromeProcesses` | {'int': 2211} |
| `chromeProfiles` | {'int': 2211} |
| `chromeRendererMaxPssKb` | {'int': 2211} |
| `chromeRendererPssKb` | {'int': 2211} |
| `chromeRenderers` | {'int': 2211} |
| `chromeTabs` | {'int': 2211} |
| `chromeTabsProbedProfiles` | {'int': 2211} |
| `chromeUtilityPssKb` | {'int': 2211} |
| `desktopPssKb` | {'int': 2211} |
| `hostPssKb` | {'int': 2211} |
| `kind` | {'str': 2211} |
| `memAvailableKb` | {'int': 2211} |
| `memTotalKb` | {'int': 2211} |
| `otherPssKb` | {'int': 2211} |
| `processes` | {'int': 2211} |
| `pssFallbackProcesses` | {'int': 2211} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
