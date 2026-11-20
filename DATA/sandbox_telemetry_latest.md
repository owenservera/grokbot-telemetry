# sandbox_telemetry_parse — 2026-11-20 12:02:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1703072 lines=3775
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3764 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3764} |
| `chromeGpuPssKb` | {'int': 3764} |
| `chromeOtherPssKb` | {'int': 3764} |
| `chromeProcesses` | {'int': 3764} |
| `chromeProfiles` | {'int': 3764} |
| `chromeRendererMaxPssKb` | {'int': 3764} |
| `chromeRendererPssKb` | {'int': 3764} |
| `chromeRenderers` | {'int': 3764} |
| `chromeTabs` | {'int': 3764} |
| `chromeTabsProbedProfiles` | {'int': 3764} |
| `chromeUtilityPssKb` | {'int': 3764} |
| `desktopPssKb` | {'int': 3764} |
| `hostPssKb` | {'int': 3764} |
| `kind` | {'str': 3764} |
| `memAvailableKb` | {'int': 3764} |
| `memTotalKb` | {'int': 3764} |
| `otherPssKb` | {'int': 3764} |
| `processes` | {'int': 3764} |
| `pssFallbackProcesses` | {'int': 3764} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
