# sandbox_telemetry_parse — 2026-10-06 10:01:13 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=302522 lines=668
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 663 |
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
| `chromeBrowserPssKb` | {'int': 663} |
| `chromeGpuPssKb` | {'int': 663} |
| `chromeOtherPssKb` | {'int': 663} |
| `chromeProcesses` | {'int': 663} |
| `chromeProfiles` | {'int': 663} |
| `chromeRendererMaxPssKb` | {'int': 663} |
| `chromeRendererPssKb` | {'int': 663} |
| `chromeRenderers` | {'int': 663} |
| `chromeTabs` | {'int': 663} |
| `chromeTabsProbedProfiles` | {'int': 663} |
| `chromeUtilityPssKb` | {'int': 663} |
| `desktopPssKb` | {'int': 663} |
| `hostPssKb` | {'int': 663} |
| `kind` | {'str': 663} |
| `memAvailableKb` | {'int': 663} |
| `memTotalKb` | {'int': 663} |
| `otherPssKb` | {'int': 663} |
| `processes` | {'int': 663} |
| `pssFallbackProcesses` | {'int': 663} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
