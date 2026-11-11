# sandbox_telemetry_parse — 2026-11-12 00:51:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1897864 lines=4202
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4193 |
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
| `chromeBrowserPssKb` | {'int': 4193} |
| `chromeGpuPssKb` | {'int': 4193} |
| `chromeOtherPssKb` | {'int': 4193} |
| `chromeProcesses` | {'int': 4193} |
| `chromeProfiles` | {'int': 4193} |
| `chromeRendererMaxPssKb` | {'int': 4193} |
| `chromeRendererPssKb` | {'int': 4193} |
| `chromeRenderers` | {'int': 4193} |
| `chromeTabs` | {'int': 4193} |
| `chromeTabsProbedProfiles` | {'int': 4193} |
| `chromeUtilityPssKb` | {'int': 4193} |
| `desktopPssKb` | {'int': 4193} |
| `hostPssKb` | {'int': 4193} |
| `kind` | {'str': 4193} |
| `memAvailableKb` | {'int': 4193} |
| `memTotalKb` | {'int': 4193} |
| `otherPssKb` | {'int': 4193} |
| `processes` | {'int': 4193} |
| `pssFallbackProcesses` | {'int': 4193} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
