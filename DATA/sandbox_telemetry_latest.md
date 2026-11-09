# sandbox_telemetry_parse — 2026-11-10 00:06:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=896918 lines=1990
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1981 |
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
| `chromeBrowserPssKb` | {'int': 1981} |
| `chromeGpuPssKb` | {'int': 1981} |
| `chromeOtherPssKb` | {'int': 1981} |
| `chromeProcesses` | {'int': 1981} |
| `chromeProfiles` | {'int': 1981} |
| `chromeRendererMaxPssKb` | {'int': 1981} |
| `chromeRendererPssKb` | {'int': 1981} |
| `chromeRenderers` | {'int': 1981} |
| `chromeTabs` | {'int': 1981} |
| `chromeTabsProbedProfiles` | {'int': 1981} |
| `chromeUtilityPssKb` | {'int': 1981} |
| `desktopPssKb` | {'int': 1981} |
| `hostPssKb` | {'int': 1981} |
| `kind` | {'str': 1981} |
| `memAvailableKb` | {'int': 1981} |
| `memTotalKb` | {'int': 1981} |
| `otherPssKb` | {'int': 1981} |
| `processes` | {'int': 1981} |
| `pssFallbackProcesses` | {'int': 1981} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
