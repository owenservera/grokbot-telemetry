# sandbox_telemetry_parse — 2026-10-27 06:42:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=375664 lines=834
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 829 |
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
| `chromeBrowserPssKb` | {'int': 829} |
| `chromeGpuPssKb` | {'int': 829} |
| `chromeOtherPssKb` | {'int': 829} |
| `chromeProcesses` | {'int': 829} |
| `chromeProfiles` | {'int': 829} |
| `chromeRendererMaxPssKb` | {'int': 829} |
| `chromeRendererPssKb` | {'int': 829} |
| `chromeRenderers` | {'int': 829} |
| `chromeTabs` | {'int': 829} |
| `chromeTabsProbedProfiles` | {'int': 829} |
| `chromeUtilityPssKb` | {'int': 829} |
| `desktopPssKb` | {'int': 829} |
| `hostPssKb` | {'int': 829} |
| `kind` | {'str': 829} |
| `memAvailableKb` | {'int': 829} |
| `memTotalKb` | {'int': 829} |
| `otherPssKb` | {'int': 829} |
| `processes` | {'int': 829} |
| `pssFallbackProcesses` | {'int': 829} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
