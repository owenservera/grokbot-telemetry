# sandbox_telemetry_parse — 2026-10-06 07:51:46 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=244154 lines=540
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 535 |
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
| `chromeBrowserPssKb` | {'int': 535} |
| `chromeGpuPssKb` | {'int': 535} |
| `chromeOtherPssKb` | {'int': 535} |
| `chromeProcesses` | {'int': 535} |
| `chromeProfiles` | {'int': 535} |
| `chromeRendererMaxPssKb` | {'int': 535} |
| `chromeRendererPssKb` | {'int': 535} |
| `chromeRenderers` | {'int': 535} |
| `chromeTabs` | {'int': 535} |
| `chromeTabsProbedProfiles` | {'int': 535} |
| `chromeUtilityPssKb` | {'int': 535} |
| `desktopPssKb` | {'int': 535} |
| `hostPssKb` | {'int': 535} |
| `kind` | {'str': 535} |
| `memAvailableKb` | {'int': 535} |
| `memTotalKb` | {'int': 535} |
| `otherPssKb` | {'int': 535} |
| `processes` | {'int': 535} |
| `pssFallbackProcesses` | {'int': 535} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
