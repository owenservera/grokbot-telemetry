# sandbox_telemetry_parse — 2026-10-16 17:13:37 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=659247 lines=2464
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1630 |
| `memory_sample` | 825 |
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
| `chromeBrowserPssKb` | {'int': 825} |
| `chromeGpuPssKb` | {'int': 825} |
| `chromeOtherPssKb` | {'int': 825} |
| `chromeProcesses` | {'int': 825} |
| `chromeProfiles` | {'int': 825} |
| `chromeRendererMaxPssKb` | {'int': 825} |
| `chromeRendererPssKb` | {'int': 825} |
| `chromeRenderers` | {'int': 825} |
| `chromeTabs` | {'int': 825} |
| `chromeTabsProbedProfiles` | {'int': 825} |
| `chromeUtilityPssKb` | {'int': 825} |
| `desktopPssKb` | {'int': 825} |
| `hostPssKb` | {'int': 825} |
| `kind` | {'str': 825} |
| `memAvailableKb` | {'int': 825} |
| `memTotalKb` | {'int': 825} |
| `otherPssKb` | {'int': 825} |
| `processes` | {'int': 825} |
| `pssFallbackProcesses` | {'int': 825} |

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
| `cpuMillicores` | {'int': 1627} |
| `display` | {'int': 1630} |
| `kind` | {'str': 1630} |
| `processes` | {'int': 1630} |
| `pssKb` | {'int': 1630} |
| `rendererMaxPssKb` | {'int': 1630} |
| `renderers` | {'int': 1630} |
| `tabs` | {'int': 1629} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
