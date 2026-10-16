# sandbox_telemetry_parse — 2026-10-16 11:39:30 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=410454 lines=1534
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1010 |
| `memory_sample` | 515 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
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
| `chromeBrowserPssKb` | {'int': 515} |
| `chromeGpuPssKb` | {'int': 515} |
| `chromeOtherPssKb` | {'int': 515} |
| `chromeProcesses` | {'int': 515} |
| `chromeProfiles` | {'int': 515} |
| `chromeRendererMaxPssKb` | {'int': 515} |
| `chromeRendererPssKb` | {'int': 515} |
| `chromeRenderers` | {'int': 515} |
| `chromeTabs` | {'int': 515} |
| `chromeTabsProbedProfiles` | {'int': 515} |
| `chromeUtilityPssKb` | {'int': 515} |
| `desktopPssKb` | {'int': 515} |
| `hostPssKb` | {'int': 515} |
| `kind` | {'str': 515} |
| `memAvailableKb` | {'int': 515} |
| `memTotalKb` | {'int': 515} |
| `otherPssKb` | {'int': 515} |
| `processes` | {'int': 515} |
| `pssFallbackProcesses` | {'int': 515} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 1007} |
| `display` | {'int': 1010} |
| `kind` | {'str': 1010} |
| `processes` | {'int': 1010} |
| `pssKb` | {'int': 1010} |
| `rendererMaxPssKb` | {'int': 1010} |
| `renderers` | {'int': 1010} |
| `tabs` | {'int': 1009} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
