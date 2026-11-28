# sandbox_telemetry_parse — 2026-11-28 18:59:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1014591 lines=2249
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2241 |
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
| `chromeBrowserPssKb` | {'int': 2241} |
| `chromeGpuPssKb` | {'int': 2241} |
| `chromeOtherPssKb` | {'int': 2241} |
| `chromeProcesses` | {'int': 2241} |
| `chromeProfiles` | {'int': 2241} |
| `chromeRendererMaxPssKb` | {'int': 2241} |
| `chromeRendererPssKb` | {'int': 2241} |
| `chromeRenderers` | {'int': 2241} |
| `chromeTabs` | {'int': 2241} |
| `chromeTabsProbedProfiles` | {'int': 2241} |
| `chromeUtilityPssKb` | {'int': 2241} |
| `desktopPssKb` | {'int': 2241} |
| `hostPssKb` | {'int': 2241} |
| `kind` | {'str': 2241} |
| `memAvailableKb` | {'int': 2241} |
| `memTotalKb` | {'int': 2241} |
| `otherPssKb` | {'int': 2241} |
| `processes` | {'int': 2241} |
| `pssFallbackProcesses` | {'int': 2241} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
