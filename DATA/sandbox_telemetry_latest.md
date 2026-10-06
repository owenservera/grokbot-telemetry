# sandbox_telemetry_parse — 2026-10-06 09:19:46 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=283826 lines=627
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 622 |
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
| `chromeBrowserPssKb` | {'int': 622} |
| `chromeGpuPssKb` | {'int': 622} |
| `chromeOtherPssKb` | {'int': 622} |
| `chromeProcesses` | {'int': 622} |
| `chromeProfiles` | {'int': 622} |
| `chromeRendererMaxPssKb` | {'int': 622} |
| `chromeRendererPssKb` | {'int': 622} |
| `chromeRenderers` | {'int': 622} |
| `chromeTabs` | {'int': 622} |
| `chromeTabsProbedProfiles` | {'int': 622} |
| `chromeUtilityPssKb` | {'int': 622} |
| `desktopPssKb` | {'int': 622} |
| `hostPssKb` | {'int': 622} |
| `kind` | {'str': 622} |
| `memAvailableKb` | {'int': 622} |
| `memTotalKb` | {'int': 622} |
| `otherPssKb` | {'int': 622} |
| `processes` | {'int': 622} |
| `pssFallbackProcesses` | {'int': 622} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
