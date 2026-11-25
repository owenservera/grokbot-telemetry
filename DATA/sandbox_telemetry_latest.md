# sandbox_telemetry_parse — 2026-11-26 00:11:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2988517 lines=6620
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6605 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6605} |
| `chromeGpuPssKb` | {'int': 6605} |
| `chromeOtherPssKb` | {'int': 6605} |
| `chromeProcesses` | {'int': 6605} |
| `chromeProfiles` | {'int': 6605} |
| `chromeRendererMaxPssKb` | {'int': 6605} |
| `chromeRendererPssKb` | {'int': 6605} |
| `chromeRenderers` | {'int': 6605} |
| `chromeTabs` | {'int': 6605} |
| `chromeTabsProbedProfiles` | {'int': 6605} |
| `chromeUtilityPssKb` | {'int': 6605} |
| `desktopPssKb` | {'int': 6605} |
| `hostPssKb` | {'int': 6605} |
| `kind` | {'str': 6605} |
| `memAvailableKb` | {'int': 6605} |
| `memTotalKb` | {'int': 6605} |
| `otherPssKb` | {'int': 6605} |
| `processes` | {'int': 6605} |
| `pssFallbackProcesses` | {'int': 6605} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
