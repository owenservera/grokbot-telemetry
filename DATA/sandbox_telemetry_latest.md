# sandbox_telemetry_parse — 2026-10-14 09:55:21 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=221850 lines=495
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 490 |
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
| `chromeBrowserPssKb` | {'int': 490} |
| `chromeGpuPssKb` | {'int': 490} |
| `chromeOtherPssKb` | {'int': 490} |
| `chromeProcesses` | {'int': 490} |
| `chromeProfiles` | {'int': 490} |
| `chromeRendererMaxPssKb` | {'int': 490} |
| `chromeRendererPssKb` | {'int': 490} |
| `chromeRenderers` | {'int': 490} |
| `chromeTabs` | {'int': 490} |
| `chromeTabsProbedProfiles` | {'int': 490} |
| `chromeUtilityPssKb` | {'int': 490} |
| `desktopPssKb` | {'int': 490} |
| `hostPssKb` | {'int': 490} |
| `kind` | {'str': 490} |
| `memAvailableKb` | {'int': 490} |
| `memTotalKb` | {'int': 490} |
| `otherPssKb` | {'int': 490} |
| `processes` | {'int': 490} |
| `pssFallbackProcesses` | {'int': 490} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
