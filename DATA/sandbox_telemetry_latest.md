# sandbox_telemetry_parse — 2026-11-10 06:57:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1028081 lines=2280
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2271 |
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
| `chromeBrowserPssKb` | {'int': 2271} |
| `chromeGpuPssKb` | {'int': 2271} |
| `chromeOtherPssKb` | {'int': 2271} |
| `chromeProcesses` | {'int': 2271} |
| `chromeProfiles` | {'int': 2271} |
| `chromeRendererMaxPssKb` | {'int': 2271} |
| `chromeRendererPssKb` | {'int': 2271} |
| `chromeRenderers` | {'int': 2271} |
| `chromeTabs` | {'int': 2271} |
| `chromeTabsProbedProfiles` | {'int': 2271} |
| `chromeUtilityPssKb` | {'int': 2271} |
| `desktopPssKb` | {'int': 2271} |
| `hostPssKb` | {'int': 2271} |
| `kind` | {'str': 2271} |
| `memAvailableKb` | {'int': 2271} |
| `memTotalKb` | {'int': 2271} |
| `otherPssKb` | {'int': 2271} |
| `processes` | {'int': 2271} |
| `pssFallbackProcesses` | {'int': 2271} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
