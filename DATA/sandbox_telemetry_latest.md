# sandbox_telemetry_parse — 2026-10-06 06:54:51 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=218162 lines=483
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 478 |
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
| `chromeBrowserPssKb` | {'int': 478} |
| `chromeGpuPssKb` | {'int': 478} |
| `chromeOtherPssKb` | {'int': 478} |
| `chromeProcesses` | {'int': 478} |
| `chromeProfiles` | {'int': 478} |
| `chromeRendererMaxPssKb` | {'int': 478} |
| `chromeRendererPssKb` | {'int': 478} |
| `chromeRenderers` | {'int': 478} |
| `chromeTabs` | {'int': 478} |
| `chromeTabsProbedProfiles` | {'int': 478} |
| `chromeUtilityPssKb` | {'int': 478} |
| `desktopPssKb` | {'int': 478} |
| `hostPssKb` | {'int': 478} |
| `kind` | {'str': 478} |
| `memAvailableKb` | {'int': 478} |
| `memTotalKb` | {'int': 478} |
| `otherPssKb` | {'int': 478} |
| `processes` | {'int': 478} |
| `pssFallbackProcesses` | {'int': 478} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
