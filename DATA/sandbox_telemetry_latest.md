# sandbox_telemetry_parse — 2026-11-10 01:56:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=938534 lines=2082
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2073 |
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
| `chromeBrowserPssKb` | {'int': 2073} |
| `chromeGpuPssKb` | {'int': 2073} |
| `chromeOtherPssKb` | {'int': 2073} |
| `chromeProcesses` | {'int': 2073} |
| `chromeProfiles` | {'int': 2073} |
| `chromeRendererMaxPssKb` | {'int': 2073} |
| `chromeRendererPssKb` | {'int': 2073} |
| `chromeRenderers` | {'int': 2073} |
| `chromeTabs` | {'int': 2073} |
| `chromeTabsProbedProfiles` | {'int': 2073} |
| `chromeUtilityPssKb` | {'int': 2073} |
| `desktopPssKb` | {'int': 2073} |
| `hostPssKb` | {'int': 2073} |
| `kind` | {'str': 2073} |
| `memAvailableKb` | {'int': 2073} |
| `memTotalKb` | {'int': 2073} |
| `otherPssKb` | {'int': 2073} |
| `processes` | {'int': 2073} |
| `pssFallbackProcesses` | {'int': 2073} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
