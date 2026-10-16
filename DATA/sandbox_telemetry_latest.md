# sandbox_telemetry_parse — 2026-10-16 09:36:00 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=325416 lines=1216
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 798 |
| `memory_sample` | 409 |
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
| `chromeBrowserPssKb` | {'int': 409} |
| `chromeGpuPssKb` | {'int': 409} |
| `chromeOtherPssKb` | {'int': 409} |
| `chromeProcesses` | {'int': 409} |
| `chromeProfiles` | {'int': 409} |
| `chromeRendererMaxPssKb` | {'int': 409} |
| `chromeRendererPssKb` | {'int': 409} |
| `chromeRenderers` | {'int': 409} |
| `chromeTabs` | {'int': 409} |
| `chromeTabsProbedProfiles` | {'int': 409} |
| `chromeUtilityPssKb` | {'int': 409} |
| `desktopPssKb` | {'int': 409} |
| `hostPssKb` | {'int': 409} |
| `kind` | {'str': 409} |
| `memAvailableKb` | {'int': 409} |
| `memTotalKb` | {'int': 409} |
| `otherPssKb` | {'int': 409} |
| `processes` | {'int': 409} |
| `pssFallbackProcesses` | {'int': 409} |

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
| `cpuMillicores` | {'int': 795} |
| `display` | {'int': 798} |
| `kind` | {'str': 798} |
| `processes` | {'int': 798} |
| `pssKb` | {'int': 798} |
| `rendererMaxPssKb` | {'int': 798} |
| `renderers` | {'int': 798} |
| `tabs` | {'int': 797} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
