# sandbox_telemetry_parse — 2026-11-10 10:39:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1102307 lines=2444
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2435 |
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
| `chromeBrowserPssKb` | {'int': 2435} |
| `chromeGpuPssKb` | {'int': 2435} |
| `chromeOtherPssKb` | {'int': 2435} |
| `chromeProcesses` | {'int': 2435} |
| `chromeProfiles` | {'int': 2435} |
| `chromeRendererMaxPssKb` | {'int': 2435} |
| `chromeRendererPssKb` | {'int': 2435} |
| `chromeRenderers` | {'int': 2435} |
| `chromeTabs` | {'int': 2435} |
| `chromeTabsProbedProfiles` | {'int': 2435} |
| `chromeUtilityPssKb` | {'int': 2435} |
| `desktopPssKb` | {'int': 2435} |
| `hostPssKb` | {'int': 2435} |
| `kind` | {'str': 2435} |
| `memAvailableKb` | {'int': 2435} |
| `memTotalKb` | {'int': 2435} |
| `otherPssKb` | {'int': 2435} |
| `processes` | {'int': 2435} |
| `pssFallbackProcesses` | {'int': 2435} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
