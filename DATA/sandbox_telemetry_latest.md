# sandbox_telemetry_parse — 2026-11-25 07:35:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2652951 lines=5878
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5863 |
| `egress_tunnel` | 11 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 5863} |
| `chromeGpuPssKb` | {'int': 5863} |
| `chromeOtherPssKb` | {'int': 5863} |
| `chromeProcesses` | {'int': 5863} |
| `chromeProfiles` | {'int': 5863} |
| `chromeRendererMaxPssKb` | {'int': 5863} |
| `chromeRendererPssKb` | {'int': 5863} |
| `chromeRenderers` | {'int': 5863} |
| `chromeTabs` | {'int': 5863} |
| `chromeTabsProbedProfiles` | {'int': 5863} |
| `chromeUtilityPssKb` | {'int': 5863} |
| `desktopPssKb` | {'int': 5863} |
| `hostPssKb` | {'int': 5863} |
| `kind` | {'str': 5863} |
| `memAvailableKb` | {'int': 5863} |
| `memTotalKb` | {'int': 5863} |
| `otherPssKb` | {'int': 5863} |
| `processes` | {'int': 5863} |
| `pssFallbackProcesses` | {'int': 5863} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
