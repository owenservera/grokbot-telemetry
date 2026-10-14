# sandbox_telemetry_parse — 2026-10-14 21:36:08 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=500734 lines=1112
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1107 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1107} |
| `chromeGpuPssKb` | {'int': 1107} |
| `chromeOtherPssKb` | {'int': 1107} |
| `chromeProcesses` | {'int': 1107} |
| `chromeProfiles` | {'int': 1107} |
| `chromeRendererMaxPssKb` | {'int': 1107} |
| `chromeRendererPssKb` | {'int': 1107} |
| `chromeRenderers` | {'int': 1107} |
| `chromeTabs` | {'int': 1107} |
| `chromeTabsProbedProfiles` | {'int': 1107} |
| `chromeUtilityPssKb` | {'int': 1107} |
| `desktopPssKb` | {'int': 1107} |
| `hostPssKb` | {'int': 1107} |
| `kind` | {'str': 1107} |
| `memAvailableKb` | {'int': 1107} |
| `memTotalKb` | {'int': 1107} |
| `otherPssKb` | {'int': 1107} |
| `processes` | {'int': 1107} |
| `pssFallbackProcesses` | {'int': 1107} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
