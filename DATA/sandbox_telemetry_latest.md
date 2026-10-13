# sandbox_telemetry_parse — 2026-10-14 00:09:53 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1318426 lines=3499
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2515 |
| `chrome_profile_sample` | 976 |
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
| `chromeBrowserPssKb` | {'int': 2515} |
| `chromeGpuPssKb` | {'int': 2515} |
| `chromeOtherPssKb` | {'int': 2515} |
| `chromeProcesses` | {'int': 2515} |
| `chromeProfiles` | {'int': 2515} |
| `chromeRendererMaxPssKb` | {'int': 2515} |
| `chromeRendererPssKb` | {'int': 2515} |
| `chromeRenderers` | {'int': 2515} |
| `chromeTabs` | {'int': 2515} |
| `chromeTabsProbedProfiles` | {'int': 2515} |
| `chromeUtilityPssKb` | {'int': 2515} |
| `desktopPssKb` | {'int': 2515} |
| `hostPssKb` | {'int': 2515} |
| `kind` | {'str': 2515} |
| `memAvailableKb` | {'int': 2515} |
| `memTotalKb` | {'int': 2515} |
| `otherPssKb` | {'int': 2515} |
| `processes` | {'int': 2515} |
| `pssFallbackProcesses` | {'int': 2515} |

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
| `cpuMillicores` | {'int': 975} |
| `display` | {'int': 976} |
| `kind` | {'str': 976} |
| `processes` | {'int': 976} |
| `pssKb` | {'int': 976} |
| `rendererMaxPssKb` | {'int': 976} |
| `renderers` | {'int': 976} |
| `tabs` | {'int': 976} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
