# sandbox_telemetry_parse — 2026-10-16 11:07:11 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=386404 lines=1444
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 950 |
| `memory_sample` | 485 |
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
| `chromeBrowserPssKb` | {'int': 485} |
| `chromeGpuPssKb` | {'int': 485} |
| `chromeOtherPssKb` | {'int': 485} |
| `chromeProcesses` | {'int': 485} |
| `chromeProfiles` | {'int': 485} |
| `chromeRendererMaxPssKb` | {'int': 485} |
| `chromeRendererPssKb` | {'int': 485} |
| `chromeRenderers` | {'int': 485} |
| `chromeTabs` | {'int': 485} |
| `chromeTabsProbedProfiles` | {'int': 485} |
| `chromeUtilityPssKb` | {'int': 485} |
| `desktopPssKb` | {'int': 485} |
| `hostPssKb` | {'int': 485} |
| `kind` | {'str': 485} |
| `memAvailableKb` | {'int': 485} |
| `memTotalKb` | {'int': 485} |
| `otherPssKb` | {'int': 485} |
| `processes` | {'int': 485} |
| `pssFallbackProcesses` | {'int': 485} |

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
| `cpuMillicores` | {'int': 947} |
| `display` | {'int': 950} |
| `kind` | {'str': 950} |
| `processes` | {'int': 950} |
| `pssKb` | {'int': 950} |
| `rendererMaxPssKb` | {'int': 950} |
| `renderers` | {'int': 950} |
| `tabs` | {'int': 949} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
