# sandbox_telemetry_parse — 2026-11-06 18:43:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=115178 lines=262
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 253 |
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
| `chromeBrowserPssKb` | {'int': 253} |
| `chromeGpuPssKb` | {'int': 253} |
| `chromeOtherPssKb` | {'int': 253} |
| `chromeProcesses` | {'int': 253} |
| `chromeProfiles` | {'int': 253} |
| `chromeRendererMaxPssKb` | {'int': 253} |
| `chromeRendererPssKb` | {'int': 253} |
| `chromeRenderers` | {'int': 253} |
| `chromeTabs` | {'int': 253} |
| `chromeTabsProbedProfiles` | {'int': 253} |
| `chromeUtilityPssKb` | {'int': 253} |
| `desktopPssKb` | {'int': 253} |
| `hostPssKb` | {'int': 253} |
| `kind` | {'str': 253} |
| `memAvailableKb` | {'int': 253} |
| `memTotalKb` | {'int': 253} |
| `otherPssKb` | {'int': 253} |
| `processes` | {'int': 253} |
| `pssFallbackProcesses` | {'int': 253} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
