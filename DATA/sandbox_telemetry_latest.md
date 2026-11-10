# sandbox_telemetry_parse — 2026-11-10 05:09:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=998698 lines=2215
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2206 |
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
| `chromeBrowserPssKb` | {'int': 2206} |
| `chromeGpuPssKb` | {'int': 2206} |
| `chromeOtherPssKb` | {'int': 2206} |
| `chromeProcesses` | {'int': 2206} |
| `chromeProfiles` | {'int': 2206} |
| `chromeRendererMaxPssKb` | {'int': 2206} |
| `chromeRendererPssKb` | {'int': 2206} |
| `chromeRenderers` | {'int': 2206} |
| `chromeTabs` | {'int': 2206} |
| `chromeTabsProbedProfiles` | {'int': 2206} |
| `chromeUtilityPssKb` | {'int': 2206} |
| `desktopPssKb` | {'int': 2206} |
| `hostPssKb` | {'int': 2206} |
| `kind` | {'str': 2206} |
| `memAvailableKb` | {'int': 2206} |
| `memTotalKb` | {'int': 2206} |
| `otherPssKb` | {'int': 2206} |
| `processes` | {'int': 2206} |
| `pssFallbackProcesses` | {'int': 2206} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
