# sandbox_telemetry_parse — 2026-11-19 13:42:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1294928 lines=2871
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2862 |
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
| `chromeBrowserPssKb` | {'int': 2862} |
| `chromeGpuPssKb` | {'int': 2862} |
| `chromeOtherPssKb` | {'int': 2862} |
| `chromeProcesses` | {'int': 2862} |
| `chromeProfiles` | {'int': 2862} |
| `chromeRendererMaxPssKb` | {'int': 2862} |
| `chromeRendererPssKb` | {'int': 2862} |
| `chromeRenderers` | {'int': 2862} |
| `chromeTabs` | {'int': 2862} |
| `chromeTabsProbedProfiles` | {'int': 2862} |
| `chromeUtilityPssKb` | {'int': 2862} |
| `desktopPssKb` | {'int': 2862} |
| `hostPssKb` | {'int': 2862} |
| `kind` | {'str': 2862} |
| `memAvailableKb` | {'int': 2862} |
| `memTotalKb` | {'int': 2862} |
| `otherPssKb` | {'int': 2862} |
| `processes` | {'int': 2862} |
| `pssFallbackProcesses` | {'int': 2862} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
