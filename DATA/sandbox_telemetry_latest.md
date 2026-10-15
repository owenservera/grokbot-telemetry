# sandbox_telemetry_parse — 2026-10-15 23:44:17 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1114098 lines=2469
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2464 |
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
| `chromeBrowserPssKb` | {'int': 2464} |
| `chromeGpuPssKb` | {'int': 2464} |
| `chromeOtherPssKb` | {'int': 2464} |
| `chromeProcesses` | {'int': 2464} |
| `chromeProfiles` | {'int': 2464} |
| `chromeRendererMaxPssKb` | {'int': 2464} |
| `chromeRendererPssKb` | {'int': 2464} |
| `chromeRenderers` | {'int': 2464} |
| `chromeTabs` | {'int': 2464} |
| `chromeTabsProbedProfiles` | {'int': 2464} |
| `chromeUtilityPssKb` | {'int': 2464} |
| `desktopPssKb` | {'int': 2464} |
| `hostPssKb` | {'int': 2464} |
| `kind` | {'str': 2464} |
| `memAvailableKb` | {'int': 2464} |
| `memTotalKb` | {'int': 2464} |
| `otherPssKb` | {'int': 2464} |
| `processes` | {'int': 2464} |
| `pssFallbackProcesses` | {'int': 2464} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
