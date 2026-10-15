# sandbox_telemetry_parse — 2026-10-15 08:12:37 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=753854 lines=1672
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1667 |
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
| `chromeBrowserPssKb` | {'int': 1667} |
| `chromeGpuPssKb` | {'int': 1667} |
| `chromeOtherPssKb` | {'int': 1667} |
| `chromeProcesses` | {'int': 1667} |
| `chromeProfiles` | {'int': 1667} |
| `chromeRendererMaxPssKb` | {'int': 1667} |
| `chromeRendererPssKb` | {'int': 1667} |
| `chromeRenderers` | {'int': 1667} |
| `chromeTabs` | {'int': 1667} |
| `chromeTabsProbedProfiles` | {'int': 1667} |
| `chromeUtilityPssKb` | {'int': 1667} |
| `desktopPssKb` | {'int': 1667} |
| `hostPssKb` | {'int': 1667} |
| `kind` | {'str': 1667} |
| `memAvailableKb` | {'int': 1667} |
| `memTotalKb` | {'int': 1667} |
| `otherPssKb` | {'int': 1667} |
| `processes` | {'int': 1667} |
| `pssFallbackProcesses` | {'int': 1667} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
