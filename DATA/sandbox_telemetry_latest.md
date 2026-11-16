# sandbox_telemetry_parse — 2026-11-16 18:18:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=69747 lines=160
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 153 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 153} |
| `chromeGpuPssKb` | {'int': 153} |
| `chromeOtherPssKb` | {'int': 153} |
| `chromeProcesses` | {'int': 153} |
| `chromeProfiles` | {'int': 153} |
| `chromeRendererMaxPssKb` | {'int': 153} |
| `chromeRendererPssKb` | {'int': 153} |
| `chromeRenderers` | {'int': 153} |
| `chromeTabs` | {'int': 153} |
| `chromeTabsProbedProfiles` | {'int': 153} |
| `chromeUtilityPssKb` | {'int': 153} |
| `desktopPssKb` | {'int': 153} |
| `hostPssKb` | {'int': 153} |
| `kind` | {'str': 153} |
| `memAvailableKb` | {'int': 153} |
| `memTotalKb` | {'int': 153} |
| `otherPssKb` | {'int': 153} |
| `processes` | {'int': 153} |
| `pssFallbackProcesses` | {'int': 153} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
