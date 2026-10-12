# sandbox_telemetry_parse — 2026-10-13 00:14:16 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=713543 lines=1601
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1566 |
| `chrome_profile_sample` | 27 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 1566} |
| `chromeGpuPssKb` | {'int': 1566} |
| `chromeOtherPssKb` | {'int': 1566} |
| `chromeProcesses` | {'int': 1566} |
| `chromeProfiles` | {'int': 1566} |
| `chromeRendererMaxPssKb` | {'int': 1566} |
| `chromeRendererPssKb` | {'int': 1566} |
| `chromeRenderers` | {'int': 1566} |
| `chromeTabs` | {'int': 1566} |
| `chromeTabsProbedProfiles` | {'int': 1566} |
| `chromeUtilityPssKb` | {'int': 1566} |
| `desktopPssKb` | {'int': 1566} |
| `hostPssKb` | {'int': 1566} |
| `kind` | {'str': 1566} |
| `memAvailableKb` | {'int': 1566} |
| `memTotalKb` | {'int': 1566} |
| `otherPssKb` | {'int': 1566} |
| `processes` | {'int': 1566} |
| `pssFallbackProcesses` | {'int': 1566} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 26} |
| `display` | {'int': 27} |
| `kind` | {'str': 27} |
| `processes` | {'int': 27} |
| `pssKb` | {'int': 27} |
| `rendererMaxPssKb` | {'int': 27} |
| `renderers` | {'int': 27} |
| `tabs` | {'int': 27} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
