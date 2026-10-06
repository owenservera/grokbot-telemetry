# sandbox_telemetry_parse — 2026-10-06 13:41:54 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=401474 lines=885
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 880 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 880} |
| `chromeGpuPssKb` | {'int': 880} |
| `chromeOtherPssKb` | {'int': 880} |
| `chromeProcesses` | {'int': 880} |
| `chromeProfiles` | {'int': 880} |
| `chromeRendererMaxPssKb` | {'int': 880} |
| `chromeRendererPssKb` | {'int': 880} |
| `chromeRenderers` | {'int': 880} |
| `chromeTabs` | {'int': 880} |
| `chromeTabsProbedProfiles` | {'int': 880} |
| `chromeUtilityPssKb` | {'int': 880} |
| `desktopPssKb` | {'int': 880} |
| `hostPssKb` | {'int': 880} |
| `kind` | {'str': 880} |
| `memAvailableKb` | {'int': 880} |
| `memTotalKb` | {'int': 880} |
| `otherPssKb` | {'int': 880} |
| `processes` | {'int': 880} |
| `pssFallbackProcesses` | {'int': 880} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
