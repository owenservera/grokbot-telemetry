# sandbox_telemetry_parse — 2026-10-06 05:05:56 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=168914 lines=375
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 370 |
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
| `chromeBrowserPssKb` | {'int': 370} |
| `chromeGpuPssKb` | {'int': 370} |
| `chromeOtherPssKb` | {'int': 370} |
| `chromeProcesses` | {'int': 370} |
| `chromeProfiles` | {'int': 370} |
| `chromeRendererMaxPssKb` | {'int': 370} |
| `chromeRendererPssKb` | {'int': 370} |
| `chromeRenderers` | {'int': 370} |
| `chromeTabs` | {'int': 370} |
| `chromeTabsProbedProfiles` | {'int': 370} |
| `chromeUtilityPssKb` | {'int': 370} |
| `desktopPssKb` | {'int': 370} |
| `hostPssKb` | {'int': 370} |
| `kind` | {'str': 370} |
| `memAvailableKb` | {'int': 370} |
| `memTotalKb` | {'int': 370} |
| `otherPssKb` | {'int': 370} |
| `processes` | {'int': 370} |
| `pssFallbackProcesses` | {'int': 370} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
