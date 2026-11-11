# sandbox_telemetry_parse — 2026-11-11 13:53:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1660706 lines=3678
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3669 |
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
| `chromeBrowserPssKb` | {'int': 3669} |
| `chromeGpuPssKb` | {'int': 3669} |
| `chromeOtherPssKb` | {'int': 3669} |
| `chromeProcesses` | {'int': 3669} |
| `chromeProfiles` | {'int': 3669} |
| `chromeRendererMaxPssKb` | {'int': 3669} |
| `chromeRendererPssKb` | {'int': 3669} |
| `chromeRenderers` | {'int': 3669} |
| `chromeTabs` | {'int': 3669} |
| `chromeTabsProbedProfiles` | {'int': 3669} |
| `chromeUtilityPssKb` | {'int': 3669} |
| `desktopPssKb` | {'int': 3669} |
| `hostPssKb` | {'int': 3669} |
| `kind` | {'str': 3669} |
| `memAvailableKb` | {'int': 3669} |
| `memTotalKb` | {'int': 3669} |
| `otherPssKb` | {'int': 3669} |
| `processes` | {'int': 3669} |
| `pssFallbackProcesses` | {'int': 3669} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
